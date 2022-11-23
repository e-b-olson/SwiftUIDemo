#! python3

# This script generates an enum for all the SwiftUI views
# listed in ./view_list.txt

import os

# Globals
view_list_file_path = "./view_list.txt"

def main():
    list_of_views = get_view_list()

    create_enum(list_of_views)


def get_view_list():
    # Note: not handling errors.  Just don't mess up! ;)
    with open(view_list_file_path, 'r') as view_list_file:
        view_list_data = view_list_file.read()

    view_list = view_list_data.split('\n')
        
    view_list_file.close()

    return view_list


def create_enum(list_of_views):
    # args
    template_case_string = "{{ case }}"
    template_file_path = "./templates/enum_template.txt"
    output_file_path = "./products/views_enum.txt"

    # build the case statements
    case_statements = ""
    for view_name in list_of_views:
        if not view_name:
            continue
        case_string = "        case {}\n".format(view_name)
        case_statements += case_string

    # load template
    with open(template_file_path, 'r') as template_file:
        template_data = template_file.read()

    # replace template strings
    file_data = template_data.replace(template_case_string, case_statements)

    # write view builder file
    with open(output_file_path, 'w') as output_file:
        output_file.write(file_data)

    output_file.close()
    template_file.close()


if __name__ == "__main__":
    main()
