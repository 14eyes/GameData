require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1500907Trigger_1 = class("Q1500907Trigger_1", GadgetActorProxy)
Q1500907Trigger_1.defaultAlias = "Q1500907Trigger_1"
local Q15009ClientConfig = require("Quest/Client/Q15009ClientConfig")

local this
local subIDs = Q15009ClientConfig.SubIDs
local datas = Q15009ClientConfig.Datas
local npcs = Q15009ClientConfig.Npcs
local points = Q15009ClientConfig.Points

function Q1500907Trigger_1:OnPostDataPrepare()
    print("Q1500907Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q1500907Trigger_1:OnPostComponentPrepare()
    print("Q1500907Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15009)
end

function Q1500907Trigger_1:TriggerIn()
    print("Q1500907Trigger_1 - TriggerIn")
    actorMgr:GetActor("15009"):ShowBlackScreenWithDialogText(0.5, 1.5, 0.5, function(arg1)
        actorMgr:GetActor("15009"):CreateQuestNpcById(1500907, npcs.Npc1087.id, 0, false, 0)
        actorMgr:GetActor("15009"):RequestInteraction(npcs.Npc1087.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q1500907Trigger_1:PreTriggerIn()
    print("Q1500907Trigger_1 - PreTriggerIn")
end

function Q1500907Trigger_1:LightUpTriggerIn()
    print("Q1500907Trigger_1 - LightUpTriggerIn")
end

function Q1500907Trigger_1:TriggerOut()
    print("Q1500907Trigger_1 - TriggerOut")
end

return Q1500907Trigger_1
