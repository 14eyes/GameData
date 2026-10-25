require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600414Trigger_2 = class("Q1600414Trigger_2", GadgetActorProxy)
Q1600414Trigger_2.defaultAlias = "Q1600414Trigger_2"
local Q16004ClientConfig = require("Quest/Client/Q16004ClientConfig")

local this
local subIDs = Q16004ClientConfig.SubIDs
local datas = Q16004ClientConfig.Datas
local npcs = Q16004ClientConfig.Npcs
local points = Q16004ClientConfig.Points

function Q1600414Trigger_2:OnPostDataPrepare()
    print("Q1600414Trigger_2 - OnPostDataPrepare")
    this = self
end

function Q1600414Trigger_2:OnPostComponentPrepare()
    print("Q1600414Trigger_2 - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16004)
end

function Q1600414Trigger_2:TriggerIn()
    print("Q1600414Trigger_2 - TriggerIn")
end

function Q1600414Trigger_2:PreTriggerIn()
    print("Q1600414Trigger_2 - PreTriggerIn")
end

function Q1600414Trigger_2:LightUpTriggerIn()
    print("Q1600414Trigger_2 - LightUpTriggerIn")
    actorUtils.FinishQuestID(false, 1600414)
end

function Q1600414Trigger_2:TriggerOut()
    print("Q1600414Trigger_2 - TriggerOut")
end

return Q1600414Trigger_2
