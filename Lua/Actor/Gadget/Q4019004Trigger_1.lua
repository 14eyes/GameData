require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4019004Trigger_1 = class("Q4019004Trigger_1", GadgetActorProxy)
Q4019004Trigger_1.defaultAlias = "Q4019004Trigger_1"
local Q40190ClientConfig = require("Quest/Client/Q40190ClientConfig")

local this
local subIDs = Q40190ClientConfig.SubIDs
local datas = Q40190ClientConfig.Datas
local npcs = Q40190ClientConfig.Npcs
local points = Q40190ClientConfig.Points

function Q4019004Trigger_1:OnPostDataPrepare()
    print("Q4019004Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q4019004Trigger_1:OnPostComponentPrepare()
    print("Q4019004Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40190)
end

function Q4019004Trigger_1:TriggerIn()
    print("Q4019004Trigger_1 - TriggerIn")
    actorMgr:GetActor("40190"):CreateQuestNpcById(4019004, npcs.Npc15132_1.id, 0, false, 0)
    actorMgr:GetActor("40190"):ActionSafeCall(function(arg1)
        actorMgr:GetActor("40190"):GetQuestNpcActor(npcs.Npc15132_1.alias, 40190):DoFreeStyle(1, true, nil, true, true, false, false)
    end)

    this:DestroySelf()
end

function Q4019004Trigger_1:PreTriggerIn()
    print("Q4019004Trigger_1 - PreTriggerIn")
end

function Q4019004Trigger_1:LightUpTriggerIn()
    print("Q4019004Trigger_1 - LightUpTriggerIn")
end

function Q4019004Trigger_1:TriggerOut()
    print("Q4019004Trigger_1 - TriggerOut")
end

return Q4019004Trigger_1
