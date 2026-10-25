require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q8009Trigger = class("Q8009Trigger", GadgetActorProxy)
Q8009Trigger.defaultAlias = "Q8009Trigger"
local Q8009ClientConfig = require("Quest/Client/Q8009ClientConfig")

local this
local subIDs = Q8009ClientConfig.SubIDs
local npcs = Q8009ClientConfig.Npcs
local datas = Q8009ClientConfig.Datas

function Q8009Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q8009Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q8009Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8009"):ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("8009")
        actor:CreateQuestNpcById(800904, npcs.Npc1022Data.id, 0)
        actor:RequestInteraction(npcs.Npc1022Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q8009Trigger:TriggerOut()
    print("TriggerOut")
end

return Q8009Trigger
