--[[ 

⚠️ READ BEFORE YOU'RE USING THIS ⚠️

THIS WAS MADE FOR EDUCATIONAL PURPOSE ONLY ON REFVERSE ENGINEERING ROBLOX XML TREE
SO I MADE THIS OPEN SOURCE

]]--

local Chat = game:GetService("Chat")
local CollectionService = game:GetService("CollectionService")
local Lighting = game:GetService("Lighting")
local LocalizationService = game:GetService("LocalizationService")
local MarketplaceService = game:GetService("MarketplaceService")
local MaterialService = game:GetService("MaterialService")
local Players = game:GetService("Players")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerScriptService = game:GetService("ServerScriptService")
local ServerStorage = game:GetService("ServerStorage")
local SoundService = game:GetService("SoundService")
local StarterGui = game:GetService("StarterGui")
local StarterPack = game:GetService("StarterPack")
local StarterPlayer = game:GetService("StarterPlayer")
local Teams = game:GetService("Teams")
local TestService = game:GetService("TestService")
local TextService = game:GetService("TextService")
local VRService = game:GetService("VRService")
local VoiceChatService = game:GetService("VoiceChatService")

local Settings = {}

local SavingServices = {
	workspace,
	Players,
	Lighting,
	MaterialService,
	ReplicatedFirst,
	ReplicatedStorage,
	ServerScriptService,
	ServerStorage,
	StarterGui,
	StarterPack,
	StarterPlayer,
	Teams,
	SoundService,
	TextService,
	Chat,
	VoiceChatService,
	LocalizationService,
	TestService,
	VRService,
}
-- local RblxLinkAssets = {
-- 	"rbxassetid://",
-- 	"rbxasset://",
-- 	"http://www.roblox.com//asset/?id=",
-- 	"http://www.roblox.com/asset/?id=",
-- 	"https://www.roblox.com/asset/?id=",
-- 	"https://www.roblox.com//asset/?id=",
-- }
local RblxForcePropertiesData = {
	float = {
		"Brightness",
		"Density",
		"Decay",
		"Haze",
		"Glare",
		"Transparency",
		"Reflectance",
	},
}
local RblxProperties = {
	"C0",
	"C1",

	"AutomaticScalingEnabled",

	"CastShadow",
	"Color",
	"Color3",
	"Material",
	"MaterialVariantSerialized",

	"RenderFidelity",
	"SmoothingAngle",

	"TonemapperPreset",

	"Intensity",
	"Threshold",

	"CelestialBodiesShown",
	"MoonAngularSize",
	"MoonTextureContent",
	"SkyboxBackContent",
	"SkyboxDownContent",
	"SkyboxFrontContent",
	"SkyboxLeftContent",
	"SkyboxRightContent",
	"SkyboxOrientation",
	"SkyboxUpContent",
	"StarCount",
	"SunAngularSize",
	"SunTextureContent",
	"SunTextureId",

	"UsePartColor",

	"Density",
	"Decay",
	"Glare",
	"Haze",

	"Spread",

	"Contrast",
	"Saturation",
	"TintColor",

	"Source",

	"Reflectance",
	"Transparency",
	"AssetId", -- UNION LET"S GO
	"MeshId",
	"MeshContent",
	"TextureContent",
	"DoubleSided",
	"TextureId",
	"TextureID",
	"Texture",
	"AnimationId",

	"CageMeshContent",
	"CageOrigin",
	"ImportOrigin",
	"Stiffness",
	"CageOriginWorld",
	"ImportOriginWorld",
	"DebugMode",

	"MeshType",
	"Offset",
	"Scale",
	"VertexColor",
	"ColorMapContent",
	"MetalnessMapContent",
	"NormalMapContent",

	"OffsetStudsU",
	"OffsetStudsV",

	"RoughnessMapContent",

	"StudsPerTileU",
	"StudsPerTileV",

	"UseAvatarSettings",
	"AccessoryBlob",
	"BackAccessory",
	"FaceAccessory",
	"FrontAccessory",
	"HairAccessory",
	"HatAccessory",
	"NeckAccessory",
	"ShoulderAccessory",
	"WaistAccessory",

	"ClimbAnimation",
	"FallAnimation",
	"IdleAnimation",
	"JumpAnimation",
	"MoodAnimation",
	"RunAnimation",
	"StaticFacialAnimation",
	"SwimAnimation",
	"WalkAnimation",
	"HeadColor",
	"LeftArmColor",
	"LeftLegColor",
	"RightArmColor",
	"RightLegColor",
	"TorsoColor",
	"Head",
	"LeftArm",
	"LeftLeg",
	"RightArm",
	"RightLeg",
	"Torso",
	"GraphicTShirt",
	"Pants",
	"Shirt",
	"BodyTypeScale",
	"DepthScale",
	"HeadScale",
	"HeightScale",
	"ProportionScale",
	"WidthScale",

	"Face",

	"HeadColor3",
	"TorsoColor3",
	"LeftArmColor3",
	"RightArmColor3",
	"RightLegColor3",
	"LeftLegColor3",

	"PantsTemplate",
	"ShirtTemplate",

	"CameraOffset",
	"DisplayDistanceType",
	"DisplayName",
	"HealthDisplayDistance",
	"HealthDisplayType",
	"NameDisplayDistance",
	"NameOcclusion",
	"RigType",
	"BreakJointsOnDeath",
	"EvaluateStateMachine",
	"RequiresNeck",
	"AutoRotate",
	"Jump",
	"PlatformStand",
	"Sit",
	"TargetPoint",
	"WalkToPart",
	"WalkToPoint",
	"Health",
	"HipHeight",
	"MaxHealth",
	"MaxSlopeAngle",
	"WalkSpeed",
	"AutoJumpEnabled",
	"JumpPower",
	"UseJumpPower",

	"Archivable",
	"Locked",
	"Name",

	"LightEmission",
	"LightInfluence",
	"Brightness",
	"Range",
	"Angle",
	"Shadows",

	"ZOffset",
	"ZIndex",

	"Squash",
	"Lifetime",
	"Rate",
	"Rotation",
	"RotSpeed",
	"Speed",

	"EmissionDirection",
	"SpreadAngle",

	"Shape",
	"ShapeInOut",
	"ShapeStyle",

	"FlipbookLayout",
	"Acceleration",

	"Drag",
	"LockedToPart",

	"TimeScale",
	"VelocityInheritance",
	"WindAffectsDrag",

	"Size",
	"InitialSize",
	"CFrame",
	"WorldPivot",
	"Scale",
	"ModelStreamingMode",
	"DesiredAngle",
	"MaxVelocity",

	"Ambient",
	"ColorShift_Bottom",
	"ColorShift_Top",
	"EnvironmentDiffuseScale",
	"EnvironmentSpecularScale",
	"GlobalShadows",
	"Technology",
	"OutdoorAmbient",
	"PrioritizeLightingQuality",
	"GeographicLatitude",
	"TimeOfDay",
	"ExposureCompensation",
	"FogColor",
	"FogEnd",
	"FogStart",

	"Part0",
	"Part1",
	"Attachment0",
	"Attachment1",

	"Enabled",
	"Disabled",

	"Radius",
	"Visible",

	"EnableFluidForces",

	"Anchored",

	"CanCollide",
	"CanTouch",
	"CanQuery",
	"AudioCanCollide",

	"RootPriority",
	"Massless",

	"Velocity",

	"Shape",

	"CollisionGroupId",
	"PrimaryPart",

	"D",
	"P",
	"MaxForce",
	"Position",
	"AngularVelocity",
	"MaxTorque",

	"SoundId",

	"BackSurface",
	"BottomSurface",
	"FrontSurface",
	"LeftSurface",
	"RightSurface",
	"TopSurface",

	"AlphaMode",
	"EmissiveMaskContent",
	"EmissiveStrengh",
	"EmissiveTint",
	"ColorMap",
	"MetalnessMap",
	"NormalMap",
	"RoughnessMap",
	"TexturePack",

	"BaseMaterial",
	"MaterialPattern",
	"StudsPerTile",

	"Length",

	"ActuatorType",
	"LimitsEnabled",

	"LimitAngle0",
	"LimitAngle1",
	"Length",

	"LowerAngle",
	"Restitution",
	"UpperAngle",

	"Coils",
	"Damping",
	"FreeLength",

	"BaseTextureContent",
	"BaseTextureId",
	"BodyPart",
	"OverlayTextureContent",
	"OverlayTextureId",

	--// Terrain LETS GOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
	"SmoothGrid",

	--// UIs
	"SelectionImageObject",
	"Active",
	"AnchorPoint",
	"AutomaticSize",
	"BackgroundColor3",
	"BackgroundTransparency",
	"BorderColor3",
	"BorderMode",
	"BorderSizePixel",
	"Interactable",
	"LayoutOrder",
	"Rotation",
	"SizeConstraint",
	"ClipsDescendants",
	"ImageColor3",
	"ImageContent",
	"Image",
	"ImageRectOffset",
	"ImageRectSize",
	"ImageTransparency",
	"ResampleMode",
	"ScaleType",
	"AutoLocalize",
	"RootLocalizationTable",
	"NextSelectionDown",
	"NextSelectionLeft",
	"NextSelectionRight",
	"NextSelectionUp",
	"Selectable",
	"SelectionOrder",

	"Style",
	"Draggable",
	"Modal",

	"HoverHapticEffect",
	"PressHapticEffect",

	"FontFace",
	"LineHeight",
	"MaxVisibleGraphemes",
	"OpenTypeFeatures",
	"RichText",
	"Text",
	"TextTransparency",
	"TextColor3",
	"TextDirection",
	"TextScaled",
	"TextSize",
	"TextStrokeColor3",
	"TextStrokeTransparency",
	"TextTruncate",
	"TextWrapped",
	"TextXAlignment",
	"TextYAlignment",

	"AspectRatio",
	"AspectType",
	"DominantAxis",

	"MaxSize",
	"MinSize",

	"CornerRadius",

	"Padding",
	"FillDirection",
	"SortOrder",
	"Wraps",
	"HorizontalAlignment",
	"HorizontalFlex",
	"ItemLineAlignment",
	"VerticalAlignment",
	"VerticalFlex",

	"ApplyStrokeMode",
	"BorderOffset",
	"BorderStrokePosition",
	"LineJoinMode",
	"StrokeSizingMode",
	"Thickness",
	"Transparency",

	"PaddingBottom",
	"PaddingLeft",
	"PaddingRight",
	"PaddingTop",

	"Adornee",
	"AlwaysOnTop",
	"MaxDistance",
	"ResetOnSpawn",
	"TabKeyboardNavigation",
	"ToolPunchThroughDistance",
	"CanvasSize",
	"SizingMode",
}

local ItemReferent = 0
local InstanceReferents = {}

local XMLUtils = {}
local RblxDataTypesChanger = {
	["boolean"] = function(_, valueStr)
		if valueStr == "nil" then
			valueStr = "false"
		end

		return valueStr, "bool"
	end,
	["number"] = function(value, _, property)
		local forceProperty = nil
		for dataType, props in pairs(RblxForcePropertiesData) do
			if table.find(props, property) then
				forceProperty = dataType
			end
		end

		local valueType = (forceProperty == "float") and "float" or (math.floor(value) == value and "int" or "float")

		if valueType == "float" then
			return string.format("%.10f", value), "float"
		else
			return tostring(value), "int"
		end
	end,
	["string"] = function(_, value, property, instance)
		if property then
			if property == "Source" and instance and instance:IsA("Script") then
				-- print("Source")
				if value ~= "" then
					return `<![CDATA[{value}]]>`, "ProtectedString"
				else
					local startD = tick()
					local decompiled = decompile(instance)
					local decompileTime = tick() - startD

					decompiled = `-- Decompiled time: {decompileTime}s\n-- Decompiled by {identifyexecutor()}\n\n`
						.. decompiled

					if decompiled == "" then
						decompiled = "[ Failed to decompile script ]"
					end

					if Settings.decompile then
						decompiled = ""
					end

					if instance:IsA("Script") then
						decompiled = "-- [ Failed to decompile ]: Script contained no byte code"
					end

					return `<![CDATA[{decompiled}]]>`, "ProtectedString"
				end
			elseif property == "SmoothGrid" then
				if gethiddenproperty ~= nil then
					local terrain = workspace.Terrain
					local smoothGrid = gethiddenproperty(terrain, "SmoothGrid")
					local encodedSmoothGrid = base64encode(smoothGrid)

					return encodedSmoothGrid, "BinaryString"
				else
					warn("Terrain copy doesn't work in your executor : " .. identifyexecutor())
				end
			else
				-- for _, assetText in pairs(RblxLinkAssets) do
				if (value:sub(1, 4) == "http" or value:sub(1, 8) == "rbxasset") and value:find("id") then
					local newValue = `<url><![CDATA[{value}]]></url>`
					return newValue, "Content"
				end
				-- end
			end
		end

		return `<![CDATA[{value}]]>`, "string"
	end,
	["NumberRange"] = function(_, value)
		return value, "NumberRange"
	end,
	["NumberSequence"] = function(_, value)
		return value, "NumberSequence"
	end,
	["ColorSequence"] = function(_, value)
		return value, "ColorSequence"
	end,
	["BrickColor"] = function(value)
		value = value.Color

		local result
		local result2

		result = table.concat({
			XMLUtils.newStructure("R", {}, { value.R }),
			XMLUtils.newStructure("G", {}, { value.G }),
			XMLUtils.newStructure("B", {}, { value.B }),
		})
		result2 = "Color3"

		return result, result2
	end,
	["Color3"] = function(value, _)
		local result
		local result2

		result = table.concat({
			XMLUtils.newStructure("R", {}, { value.R }),
			XMLUtils.newStructure("G", {}, { value.G }),
			XMLUtils.newStructure("B", {}, { value.B }),
		})
		result2 = "Color3"

		return result, result2
	end,
	["EnumItem"] = function(value)
		local enumValue = value.Value

		return enumValue, "token"
	end,
	["Vector3"] = function(value)
		local function fmt(n)
			return string.format("%.10f", n)
		end
		local result = table.concat({
			XMLUtils.newStructure("X", {}, { fmt(value.X) }),
			XMLUtils.newStructure("Y", {}, { fmt(value.Y) }),
			XMLUtils.newStructure("Z", {}, { fmt(value.Z) }),
		})

		return result, "Vector3"
	end,
	["CFrame"] = function(value)
		local components = { value:GetComponents() }

		local tags = {
			"X",
			"Y",
			"Z",
			"R00",
			"R01",
			"R02",
			"R10",
			"R11",
			"R12",
			"R20",
			"R21",
			"R22",
		}

		local resultTable = {}
		for i, tag in ipairs(tags) do
			table.insert(
				resultTable,
				XMLUtils.newStructure(tag, {}, {
					string.format("%.10f", components[i]),
				})
			)
		end

		return table.concat(resultTable), "CoordinateFrame"
	end,
	["Instance"] = function(value)
		return InstanceReferents[value], "Ref"
	end,
	["Vector2"] = function(value)
		local function fmt(n)
			return string.format("%.10f", n)
		end
		local result = table.concat({
			XMLUtils.newStructure("X", {}, { fmt(value.X) }),
			XMLUtils.newStructure("Y", {}, { fmt(value.Y) }),
		})

		return result, "Vector2"
	end,
	["UDim2"] = function(value)
		local result = table.concat({
			XMLUtils.newStructure("XS", {}, { string.format("%.10f", value.X.Scale) }),
			XMLUtils.newStructure("XO", {}, { math.floor(value.X.Offset) }),
			XMLUtils.newStructure("YS", {}, { string.format("%.10f", value.Y.Scale) }),
			XMLUtils.newStructure("YO", {}, { math.floor(value.Y.Offset) }),
		})
		return result, "UDim2"
	end,
	["UDim"] = function(value)
		local result = table.concat({
			XMLUtils.newStructure("S", {}, { string.format("%.10f", value.Scale) }),
			XMLUtils.newStructure("O", {}, { math.floor(value.Offset) }),
		})
		return result, "UDim"
	end,
	["Font"] = function(value: Font)
		local family = XMLUtils.rblxToXMLDataType(value.Family)
		local inside = {
			XMLUtils.newStructure("Family", {}, { `<url><![CDATA[{family}]]></url>` }),
			XMLUtils.newStructure("Weight", {}, { value.Weight.Value }),
			XMLUtils.newStructure("Style", {}, { value.Style.Name }),
		}

		return table.concat(inside), "Font"
	end,
}

function XMLUtils.newStructure(Type: string, Props: {}, Childs: {})
	local propText = ""
	for prop, value in pairs(Props) do
		propText ..= ` {prop}="{value}"`
	end

	local startText = `<{Type}{propText}>`
	local childText = table.concat(Childs)
	local endText = `</{Type}>`

	local resultText = startText .. childText .. endText
	return resultText
end

function XMLUtils.rblxToXMLDataType(Value: any, propertyName: string, instance: Instance)
	local ValueType = typeof(Value)
	local ValueTransformFunc = RblxDataTypesChanger[ValueType]

	if ValueTransformFunc then
		local result, another = ValueTransformFunc(Value, tostring(Value), propertyName, instance)

		if another == "nil" then
			warn(ValueType, " come out as nil WTF")
		end
		return result, another
	else
		return
	end
end

function XMLUtils.setUpReferent(_Instance: Instance)
	InstanceReferents[_Instance] = ItemReferent
	ItemReferent += 1

	for _, child in pairs(_Instance:GetDescendants()) do
		ItemReferent += 1
		InstanceReferents[child] = ItemReferent
	end
end

function XMLUtils.instanceToXML(_Instance: Instance, Childs)
	local Properties = {}

	local tagBinary = ""
	local tags = CollectionService:GetTags(_Instance)
	if #tags ~= 0 then
		local tagData = table.concat(tags, "\0")
		tagBinary = string.format('<BinaryString name="Tags">%s</BinaryString>', base64encode(tagData))
	end

	table.insert(Properties, tagBinary)

	for _, gameProperty in pairs(RblxProperties) do
		local value

		pcall(function()
			value = _Instance[gameProperty]
		end)

		if value == nil then
			value = nil
			pcall(function()
				value = gethiddenproperty(_Instance, gameProperty)
			end)
		end

		if value ~= nil then
			local valueNormal, XmlDataType = XMLUtils.rblxToXMLDataType(value, gameProperty, _Instance)
			if valueNormal and XmlDataType then
				local xmlName = gameProperty
				if _Instance:IsA("BasePart") and xmlName == "Size" then
					xmlName = "size"
				end

				table.insert(Properties, XMLUtils.newStructure(XmlDataType, { name = xmlName }, { valueNormal }))
			end
		end
	end

	local childTable = {
		XMLUtils.newStructure("Properties", {}, Properties),
	}

	for _, child in ipairs(Childs) do
		table.insert(childTable, child)
	end

	return XMLUtils.newStructure(
		"Item",
		{ class = _Instance.ClassName, referent = InstanceReferents[_Instance] },
		childTable
	)
end

function XMLUtils.isCharacter(_Instance: Instance)
	return Players:GetPlayerFromCharacter(_Instance)
end

local cooldown = os.clock()
function XMLUtils.getInstanceXML(_Instance: Instance)
	local ChildTable = {}

	for _, child in pairs(_Instance:GetChildren()) do
		if _Instance == game and not table.find(SavingServices, child) then
			continue
		end

		table.insert(ChildTable, XMLUtils.getInstanceXML(child))
	end

	local ChildText = ""
	for _, text in pairs(ChildTable) do
		ChildText ..= text
	end

	--// Anti Timeout
	if (os.clock() - cooldown) > 0.5 then
		task.wait()
		cooldown = os.clock()
	end

	return (XMLUtils.isCharacter(_Instance)) and ""
		or (_Instance == game) and ChildText
		or XMLUtils.instanceToXML(_Instance, ChildTable)
end

function XMLUtils.createTemplate(parts: {})
	local child = {
		table.concat(parts, "\n"),
	}

	if Settings.Object ~= game then
		table.insert(child, XMLUtils.newStructure("Meta", { name = "ExplicitAutoJoints" }, { tostring(true) }))
	end

	return XMLUtils.newStructure("roblox", { version = 4 }, child)
end

function XMLUtils.init(InputSettings)
	Settings = InputSettings
	print("Saving...")
	local GameInfo = MarketplaceService:GetProductInfoAsync(game.PlaceId, Enum.InfoType.Asset)

	local Object = Settings.Object or game
	local FileLocation = Settings.Path
		or `.\\Place_{game.PlaceId}\\{Object == game and (`Place_{game.PlaceId}-Version_{GameInfo.Updated}`):gsub(
			'[%\\%/%:%*%?%"%<%>%|]',
			"_"
		) or Object.Name}{Object == game and ".rbxlx" or ".rbxm"}`
	local Note = Settings.Note or ""
	local NoteName = Settings.NoteName or "Note [DELETE ME]"

	Note = `--[[ Saved by Uken's InstanceSaver [Private]\n{string.rep("=", 25)}\n` .. Note .. "\n]]"

	ItemReferent = 0
	InstanceReferents = {}
	XMLUtils.setUpReferent(Object)

	local NoteInstance = Instance.new("Script")
	NoteInstance.Source = Note
	NoteInstance.Name = NoteName
	NoteInstance.Disabled = true

	local XMLContent = XMLUtils.createTemplate({
		XMLUtils.getInstanceXML(Object),
		XMLUtils.getInstanceXML(NoteInstance),
	})

	if writefile and FileLocation ~= "" then
		writefile(FileLocation, XMLContent)
	end

	print("Saved!")
end

return XMLUtils

--[[ Settings : 
decompile: true | false
Object: Instance
Note: string
NoteName: string (name of the note file)
]]
