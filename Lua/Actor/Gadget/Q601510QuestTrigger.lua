require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601510QuestTrigger = class("Q601510QuestTrigger", GadgetActorProxy)
Q601510QuestTrigger.defaultAlias = "Q601510QuestTrigger"
local Q6015ClientConfig = require("Quest/Client/Q6015ClientConfig")

local this
local subIDs = Q6015ClientConfig.SubIDs
local datas = Q6015ClientConfig.Datas
local npcs = Q6015ClientConfig.Npcs
local points = Q6015ClientConfig.Points

function Q601510QuestTrigger:OnPostDataPrepare()
    print("Q601510QuestTrigger - OnPostDataPrepare")
    this = self
end

function Q601510QuestTrigger:OnPostComponentPrepare()
    print("Q601510QuestTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6015)
end

function Q601510QuestTrigger:TriggerIn()
    print("Q601510QuestTrigger - TriggerIn")
    actorUtils.FinishQuestID(false, 601510)
    this:DestroySelf()
end

function Q601510QuestTrigger:PreTriggerIn()
    print("Q601510QuestTrigger - PreTriggerIn")
end

function Q601510QuestTrigger:LightUpTriggerIn()
    print("Q601510QuestTrigger - LightUpTriggerIn")
end

function Q601510QuestTrigger:TriggerOut()
    print("Q601510QuestTrigger - TriggerOut")
end

return Q601510QuestTrigger
