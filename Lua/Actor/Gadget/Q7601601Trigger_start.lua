require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7601601Trigger_start = class("Q7601601Trigger_start", GadgetActorProxy)
Q7601601Trigger_start.defaultAlias = "Q7601601Trigger_start"
local Q76016ClientConfig = require("Quest/Client/Q76016ClientConfig")

local this
local subIDs = Q76016ClientConfig.SubIDs
local datas = Q76016ClientConfig.Datas
local npcs = Q76016ClientConfig.Npcs
local points = Q76016ClientConfig.Points

function Q7601601Trigger_start:OnPostDataPrepare()
    print("Q7601601Trigger_start - OnPostDataPrepare")
    this = self
end

function Q7601601Trigger_start:OnPostComponentPrepare()
    print("Q7601601Trigger_start - OnPostComponentPrepare")
    this:AddComponentTrigger(68, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76016)
end

function Q7601601Trigger_start:TriggerIn()
    print("Q7601601Trigger_start - TriggerIn")
    this:DestroySelf()
    actorUtils.FinishQuestID(false, 7601601)
end

function Q7601601Trigger_start:PreTriggerIn()
    print("Q7601601Trigger_start - PreTriggerIn")
end

function Q7601601Trigger_start:LightUpTriggerIn()
    print("Q7601601Trigger_start - LightUpTriggerIn")
end

function Q7601601Trigger_start:TriggerOut()
    print("Q7601601Trigger_start - TriggerOut")
end

return Q7601601Trigger_start
