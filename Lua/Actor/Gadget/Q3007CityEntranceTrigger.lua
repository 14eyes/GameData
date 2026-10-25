require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3007CityEntranceTrigger = class("Q3007CityEntranceTrigger", GadgetActorProxy)
Q3007CityEntranceTrigger.defaultAlias = "Q3007CityEntranceTrigger"
local Q3007ClientConfig = require("Quest/Client/Q3007ClientConfig")

local subIDs = Q3007ClientConfig.SubIDs
local npcs = Q3007ClientConfig.Npcs
local datas = Q3007ClientConfig.Datas

function Q3007CityEntranceTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3007CityEntranceTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(160, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3007CityEntranceTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 300701)
    self:DestroySelf()
end

function Q3007CityEntranceTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3007CityEntranceTrigger
