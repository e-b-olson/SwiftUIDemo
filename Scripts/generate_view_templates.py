import os

def main():
    # get list of views
    list_of_views = get_view_list()

    # for each view
    for view_name in list_of_views:
        if not view_name:
            continue
        
        create_folder(view_name)
        create_view_file(view_name)

def get_view_list():
    view_list_file_path = "./view_list.txt"

    with open(view_list_file_path, 'r') as view_list_file:
        view_list_data = view_list_file.read()

    view_list = view_list_data.split('\n')
        
    view_list_file.close()

    return view_list

def create_folder(view_name):
    path = "./SwiftUIDemo/Views/" + view_name
    print("Creating Folder: {}".format(path))
    
    if not os.path.exists(path):
        os.makedirs(path)

def create_view_file(view_name):
    # args
    template_view_name = "{{ view_name }}"
    template_file_path = "./templates/view_template.swift"
    output_file_path = "./SwiftUIDemo/Views/" + view_name + "/" + view_name + "DemoView.swift"

    if os.path.exists(output_file_path):
        print("File already exists. Skipping: {}".format(output_file_path))
    
    with open(template_file_path, 'r') as template_file:
        template_data = template_file.read()

    # replace template strings
    file_data = template_data.replace(template_view_name, view_name)

    # write file
    with open(output_file_path, 'w') as output_file:
        output_file.write(file_data)

    output_file.close()
    template_file.close()

if __name__ == '__main__':
    main()
