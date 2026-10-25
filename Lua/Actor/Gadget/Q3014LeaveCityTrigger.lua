require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3014LeaveCityTrigger = class("Q3014LeaveCityTrigger", GadgetActorProxy)
Q3014LeaveCityTrigger.defaultAlias = "Q3014LeaveCityTrigger"
local Q3014ClientConfig = require("Quest/Client/Q3014ClientConfig")

local subIDs = Q3014ClientConfig.SubIDs
local npcs = Q3014ClientConfig.Npcs
local datas = Q3014ClientConfig.Datas

function Q3014LeaveCityTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3014LeaveCityTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(60, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3014LeaveCityTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 301405)
    self:DestroySelf()
end

function Q3014LeaveCityTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3014LeaveCityTrigger
