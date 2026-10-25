require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3009CityEntrance = class("Q3009CityEntrance", GadgetActorProxy)
Q3009CityEntrance.defaultAlias = "Q3009CityEntrance"
local Q3009ClientConfig = require("Quest/Client/Q3009ClientConfig")

local subIDs = Q3009ClientConfig.SubIDs
local npcs = Q3009ClientConfig.Npcs
local datas = Q3009ClientConfig.Datas

function Q3009CityEntrance:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3009CityEntrance:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(160, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3009CityEntrance:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 300912)
    self:DestroySelf()
end

function Q3009CityEntrance:TriggerOut()
    print("TriggerOut")
end

return Q3009CityEntrance
