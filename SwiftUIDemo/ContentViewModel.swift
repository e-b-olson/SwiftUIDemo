//
//  ContentViewModel.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import Foundation

class ContentViewModel: ObservableObject {
    
    // https://developer.apple.com/documentation/swiftui/view#conforming-types
    enum ViewType: String, CaseIterable {
        case AngularGradient
        case AnyShape
        case AnyView
        case AsyncImage
        case Button
//        case ButtonStyleConfiguration.Label
        case Canvas
        // ^^^ conforms when Symbols conforms to View.
        case Capsule
        case Circle
        case Color
        case ColorPicker
        case ContainerRelativeShape
        case ControlGroup
//        case ControlGroupStyleConfiguration.Content
//        case ControlGroupStyleConfiguration.Label
        case DatePicker
//        case DatePickerStyleConfiguration.Label
        case DefaultDateProgressLabel
        case DefaultShareLinkLabel
        case DisclosureGroup
//        case DisclosureGroupStyleConfiguration.Content
//        case DisclosureGroupStyleConfiguration.Label
        case Divider
        case EditButton
        case EditableCollectionContent
        // ^^^ conforms when Content conforms to View.
        case Ellipse
        case EllipticalGradient
        case EmptyView
        case EquatableView
        case ForEach
        // ^^^ conforms when Data conforms to RandomAccessCollection, ID conforms to Hashable, and Content conforms to View.
        case Form
//        case FormStyleConfiguration.Content
        case Gauge
//        case GaugeStyleConfiguration.CurrentValueLabel
//        case GaugeStyleConfiguration.Label
//        case GaugeStyleConfiguration.MarkedValueLabel
//        case GaugeStyleConfiguration.MaximumValueLabel
//        case GaugeStyleConfiguration.MinimumValueLabel
        case GeometryReader
        case Grid
        // ^^^ conforms when Content conforms to View.
        case GridRow
        // ^^^ conforms when Content conforms to View.
        case Group
        // ^^^ conforms when Content conforms to View.
        case GroupBox
//        case GroupBoxStyleConfiguration.Content
//        case GroupBoxStyleConfiguration.Label
        case HSplitView
        case HStack
        case Image
        case Label
//        case LabelStyleConfiguration.Icon
//        case LabelStyleConfiguration.Title
        case LabeledContent
        // ^^^ conforms when Label conforms to View and Content conforms to View.
//        case LabeledContentStyleConfiguration.Content
//        case LabeledContentStyleConfiguration.Label
        case LabeledControlGroupContent
        case LabeledToolbarItemGroupContent
        case LazyHGrid
        case LazyHStack
        case LazyVGrid
        case LazyVStack
        case LinearGradient
        case Link
        case List
        case Menu
        case MenuButton
//        case MenuStyleConfiguration.Content
//        case MenuStyleConfiguration.Label
        case ModifiedContent
        // ^^^ conforms when Content conforms to View and Modifier conforms to ViewModifier.
        case MultiDatePicker
        case NavigationLink
        case NavigationSplitView
        case NavigationStack
        case NavigationView
        case OffsetShape
        case OutlineGroup
        // ^^^ conforms when Data conforms to RandomAccessCollection, ID conforms to Hashable, Parent conforms to View, Leaf conforms to View, and Subgroup conforms to View.
        case OutlineSubgroupChildren
        case PasteButton
        case Path
        case Picker
        case PresentedWindowContent
//        case PrimitiveButtonStyleConfiguration.Label
        case ProgressView
//        case ProgressViewStyleConfiguration.CurrentValueLabel
//        case ProgressViewStyleConfiguration.Label
        case RadialGradient
        case Rectangle
        case RenameButton
        case RotatedShape
        case RoundedRectangle
        case ScaledShape
        case ScrollView
        case ScrollViewReader
        case Section
        // ^^^ conforms when Parent conforms to View, Content conforms to View, and Footer conforms to View.
        case SecureField
        case ShareLink
        case Slider
        case Spacer
        case Stepper
        case SubscriptionView
        case TabView
        case Table
        case Text
        case TextEditor
        case TextField
        case TextFieldLink
        case TimelineView
        // ^^^ conforms when Schedule conforms to TimelineSchedule and Content conforms to View.
        case Toggle
//        case ToggleStyleConfiguration.Label
        case TransformedShape
        case TupleView
        case VSplitView
        case VStack
        case ViewThatFits
        case ZStack
    }
}
