require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3012CityEntrance = class("Q3012CityEntrance", GadgetActorProxy)
Q3012CityEntrance.defaultAlias = "Q3012CityEntrance"
local Q3012ClientConfig = require("Quest/Client/Q3012ClientConfig")

local subIDs = Q3012ClientConfig.SubIDs
local npcs = Q3012ClientConfig.Npcs
local datas = Q3012ClientConfig.Datas

function Q3012CityEntrance:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3012CityEntrance:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(160, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3012CityEntrance:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 301211)
    self:DestroySelf()
end

function Q3012CityEntrance:TriggerOut()
    print("TriggerOut")
end

return Q3012CityEntrance
