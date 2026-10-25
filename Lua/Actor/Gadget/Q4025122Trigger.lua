require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4025122Trigger = class("Q4025122Trigger", GadgetActorProxy)
Q4025122Trigger.defaultAlias = "Q4025122Trigger"
local Q40251ClientConfig = require("Quest/Client/Q40251ClientConfig")

local this
local subIDs = Q40251ClientConfig.SubIDs
local datas = Q40251ClientConfig.Datas
local npcs = Q40251ClientConfig.Npcs
local points = Q40251ClientConfig.Points

function Q4025122Trigger:OnPostDataPrepare()
    print("Q4025122Trigger - OnPostDataPrepare")
    this = self
end

function Q4025122Trigger:OnPostComponentPrepare()
    print("Q4025122Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40251)
end

function Q4025122Trigger:TriggerIn()
    print("Q4025122Trigger - TriggerIn")
end

function Q4025122Trigger:PreTriggerIn()
    print("Q4025122Trigger - PreTriggerIn")
end

function Q4025122Trigger:LightUpTriggerIn()
    print("Q4025122Trigger - LightUpTriggerIn")
    actorMgr:GetActor("40251"):ShowBlackScreenWithDialogText(0, 1.5, 0.5, function(arg1)
        actorMgr:GetActor("40251"):RequestInteraction(npcs.Npc1323.alias, "", true)
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q4025122Trigger:TriggerOut()
    print("Q4025122Trigger - TriggerOut")
end

return Q4025122Trigger
