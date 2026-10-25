require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3011CityEntrance = class("Q3011CityEntrance", GadgetActorProxy)
Q3011CityEntrance.defaultAlias = "Q3011CityEntrance"
local Q3011ClientConfig = require("Quest/Client/Q3011ClientConfig")

local subIDs = Q3011ClientConfig.SubIDs
local npcs = Q3011ClientConfig.Npcs
local datas = Q3011ClientConfig.Datas

function Q3011CityEntrance:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3011CityEntrance:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(160, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3011CityEntrance:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 301118)
    self:DestroySelf()
end

function Q3011CityEntrance:TriggerOut()
    print("TriggerOut")
end

return Q3011CityEntrance
