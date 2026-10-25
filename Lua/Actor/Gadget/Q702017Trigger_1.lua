require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q702017Trigger_1 = class("Q702017Trigger_1", GadgetActorProxy)
Q702017Trigger_1.defaultAlias = "Q702017Trigger_1"
local Q7020ClientConfig = require("Quest/Client/Q7020ClientConfig")

local this
local subIDs = Q7020ClientConfig.SubIDs
local datas = Q7020ClientConfig.Datas
local npcs = Q7020ClientConfig.Npcs
local points = Q7020ClientConfig.Points

function Q702017Trigger_1:OnPostDataPrepare()
    print("Q702017Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q702017Trigger_1:OnPostComponentPrepare()
    print("Q702017Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7020)
end

function Q702017Trigger_1:TriggerIn()
    print("Q702017Trigger_1 - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {702017})
    this:DestroySelf()
end

function Q702017Trigger_1:PreTriggerIn()
    print("Q702017Trigger_1 - PreTriggerIn")
end

function Q702017Trigger_1:LightUpTriggerIn()
    print("Q702017Trigger_1 - LightUpTriggerIn")
    actorMgr:GetActor("7020"):RequestInteraction(npcs.Npc16999.alias, "", true)
end

function Q702017Trigger_1:TriggerOut()
    print("Q702017Trigger_1 - TriggerOut")
end

return Q702017Trigger_1
