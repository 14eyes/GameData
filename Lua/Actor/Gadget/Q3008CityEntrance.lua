require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3008CityEntrance = class("Q3008CityEntrance", GadgetActorProxy)
Q3008CityEntrance.defaultAlias = "Q3008CityEntrance"
local Q3008ClientConfig = require("Quest/Client/Q3008ClientConfig")

local subIDs = Q3008ClientConfig.SubIDs
local npcs = Q3008ClientConfig.Npcs
local datas = Q3008ClientConfig.Datas

function Q3008CityEntrance:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3008CityEntrance:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(200, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3008CityEntrance:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 300810)
    self:DestroySelf()
end

function Q3008CityEntrance:TriggerOut()
    print("TriggerOut")
end

return Q3008CityEntrance
