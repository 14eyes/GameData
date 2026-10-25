require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q60205Trigger_1 = class("Q60205Trigger_1", GadgetActorProxy)
Q60205Trigger_1.defaultAlias = "Q60205Trigger_1"
local Q602ClientConfig = require("Quest/Client/Q602ClientConfig")

local this
local subIDs = Q602ClientConfig.SubIDs
local datas = Q602ClientConfig.Datas
local npcs = Q602ClientConfig.Npcs
local points = Q602ClientConfig.Points

function Q60205Trigger_1:OnPostDataPrepare()
    print("Q60205Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q60205Trigger_1:OnPostComponentPrepare()
    print("Q60205Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 602)
end

function Q60205Trigger_1:TriggerIn()
    print("Q60205Trigger_1 - TriggerIn")
    actorMgr:GetActor("602"):TransmitPlayerByQuestId(60205, 1, nil, function(arg1)
        actorMgr:GetActor("602"):ShowBlackScreenWithDialogText(0.5, 2, 0.5, function(arg1)
            actorMgr:GetActor("602"):CallDelayByQuest("", 1.5, function(arg1)
                actorMgr:GetActor("602"):CreateQuestNpcById(60205, 1018, 0, false, 0)
                actorMgr:GetActor("602"):RequestInteraction(npcs.Npc1018.alias, "", true)
            end)
        end, nil, nil, 0, false, true)

        this:DestroySelf()
    end, nil)
end

function Q60205Trigger_1:PreTriggerIn()
    print("Q60205Trigger_1 - PreTriggerIn")
end

function Q60205Trigger_1:LightUpTriggerIn()
    print("Q60205Trigger_1 - LightUpTriggerIn")
end

function Q60205Trigger_1:TriggerOut()
    print("Q60205Trigger_1 - TriggerOut")
end

return Q60205Trigger_1
