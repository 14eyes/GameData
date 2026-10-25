require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q101601Trigger = class("Q101601Trigger", GadgetActorProxy)
Q101601Trigger.defaultAlias = "Q101601Trigger"
local Q1016ClientConfig = require("Quest/Client/Q1016ClientConfig")

function Q101601Trigger:OnPostDataPrepare() end

function Q101601Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(15, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q101601Trigger:TriggerIn()
    print("101601trigger in:...")
    local actor = actorMgr:GetActor(Q1016ClientConfig.ActorAlias)
    actor.ShowBlackScreen(actor, 0.5, 1.0, 0.5, function(arg1)
        actor:DestroyQuestNpcActor(Q1016ClientConfig.ZhongliData.Alias, 3)
        actor:DestroyQuestNpcActor(Q1016ClientConfig.TiantiezuiData.Alias, 3)
        actor:NotifyTo("Npc2148", DailyNpcManager.NpcEventType.STARTDAILY, true)
    end)

    self:DestroySelf()
end

function Q101601Trigger:TriggerOut() end
return Q101601Trigger
