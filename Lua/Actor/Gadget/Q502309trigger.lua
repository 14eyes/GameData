require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502309trigger = class("Q502309trigger", GadgetActorProxy)
Q502309trigger.defaultAlias = "Q502309trigger"
local Q5023ClientConfig = require("Quest/Client/Q5023ClientConfig")

local this
local subIDs = Q5023ClientConfig.SubIDs
local datas = Q5023ClientConfig.Datas
local npcs = Q5023ClientConfig.Npcs
local points = Q5023ClientConfig.Points

function Q502309trigger:OnPostDataPrepare()
    print("Q502309trigger - OnPostDataPrepare")
    this = self
end

function Q502309trigger:OnPostComponentPrepare()
    print("Q502309trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5023)
end

function Q502309trigger:TriggerIn()
    print("Q502309trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 502309)
    actorMgr:GetActor("5023"):ShowBlackScreenWithDialogText(0, 1, 0, nil, nil, nil, 0, false, true)
    this:DestroySelf()
end

function Q502309trigger:PreTriggerIn()
    print("Q502309trigger - PreTriggerIn")
end

function Q502309trigger:LightUpTriggerIn()
    print("Q502309trigger - LightUpTriggerIn")
end

function Q502309trigger:TriggerOut()
    print("Q502309trigger - TriggerOut")
end

return Q502309trigger
