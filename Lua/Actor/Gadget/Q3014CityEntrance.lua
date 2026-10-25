require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3014CityEntrance = class("Q3014CityEntrance", GadgetActorProxy)
Q3014CityEntrance.defaultAlias = "Q3014CityEntrance"
local Q3014ClientConfig = require("Quest/Client/Q3014ClientConfig")

local subIDs = Q3014ClientConfig.SubIDs
local npcs = Q3014ClientConfig.Npcs
local datas = Q3014ClientConfig.Datas

function Q3014CityEntrance:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3014CityEntrance:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(160, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3014CityEntrance:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 301401)
    self:DestroySelf()
end

function Q3014CityEntrance:TriggerOut()
    print("TriggerOut")
end

return Q3014CityEntrance
