require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303109Trigger = class("Q303109Trigger", GadgetActorProxy)
Q303109Trigger.defaultAlias = "Q303109Trigger"
local Q3031ClientConfig = require("Quest/Client/Q3031ClientConfig")

local this
local subIDs = Q3031ClientConfig.SubIDs
local npcs = Q3031ClientConfig.Npcs
local datas = Q3031ClientConfig.Datas

function Q303109Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q303109Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q303109Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3031"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("3031")
        actor:CreateQuestNpcById(303109, npcs.Npc1065Data.id, 2)
        actor:RequestInteraction(npcs.Npc1065Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q303109Trigger:TriggerOut()
    print("TriggerOut")
end

return Q303109Trigger
