local module = {}
function module.XCodeTween(Target,TargetProperty,TargetValue,Duration)
	game:GetService("TweenService"):Create(Target,TweenInfo.new(Duration,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{TargetProperty=TargetValue}):Play()
end
function module.XCodeInsert(TargetLocation,Id)
	local InsertService = game:GetService("InsertService")
	local Assetid = Id
	local Model = InsertService:LoadAsset(Assetid)
	Model.Parent = TargetLocation
	Model.Name = "InsertedModel:" .. Assetid
	Model:MakeJoints()
end
return module
