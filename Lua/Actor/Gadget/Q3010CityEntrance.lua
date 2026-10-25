require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3010CityEntrance = class("Q3010CityEntrance", GadgetActorProxy)
Q3010CityEntrance.defaultAlias = "Q3010CityEntrance"
local Q3010ClientConfig = require("Quest/Client/Q3010ClientConfig")

local subIDs = Q3010ClientConfig.SubIDs
local npcs = Q3010ClientConfig.Npcs
local datas = Q3010ClientConfig.Datas

function Q3010CityEntrance:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3010CityEntrance:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(160, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3010CityEntrance:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 301005)
    self:DestroySelf()
end

function Q3010CityEntrance:TriggerOut()
    print("TriggerOut")
end

return Q3010CityEntrance
