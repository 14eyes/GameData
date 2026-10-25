require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4019004Trigger = class("Q4019004Trigger", GadgetActorProxy)
Q4019004Trigger.defaultAlias = "Q4019004Trigger"
local Q40190ClientConfig = require("Quest/Client/Q40190ClientConfig")

local this
local subIDs = Q40190ClientConfig.SubIDs
local datas = Q40190ClientConfig.Datas
local npcs = Q40190ClientConfig.Npcs
local points = Q40190ClientConfig.Points

function Q4019004Trigger:OnPostDataPrepare()
    print("Q4019004Trigger - OnPostDataPrepare")
    this = self
end

function Q4019004Trigger:OnPostComponentPrepare()
    print("Q4019004Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40190)
end

function Q4019004Trigger:TriggerIn()
    print("Q4019004Trigger - TriggerIn")
    actorMgr:GetActor("40190"):ShowBlackScreenWithDialogText(0.5, 1.5, 0.5, function(arg1)
        actorMgr:GetActor("40190"):CreateQuestNpcById(4019004, npcs.Npc15132_1.id, 0, false, 0)
        actorMgr:GetActor("40190"):RequestInteraction(npcs.Npc15132_1.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q4019004Trigger:PreTriggerIn()
    print("Q4019004Trigger - PreTriggerIn")
end

function Q4019004Trigger:LightUpTriggerIn()
    print("Q4019004Trigger - LightUpTriggerIn")
end

function Q4019004Trigger:TriggerOut()
    print("Q4019004Trigger - TriggerOut")
end

return Q4019004Trigger
