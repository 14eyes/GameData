require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3010EastGateTrigger = class("Q3010EastGateTrigger", GadgetActorProxy)
Q3010EastGateTrigger.defaultAlias = "Q3010EastGateTrigger"
local Q3010ClientConfig = require("Quest/Client/Q3010ClientConfig")

local subIDs = Q3010ClientConfig.SubIDs
local npcs = Q3010ClientConfig.Npcs
local datas = Q3010ClientConfig.Datas

function Q3010EastGateTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3010EastGateTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(10, 27, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3010EastGateTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3010"):RequestInteraction(npcs.Npc12657Data.alias)
end

function Q3010EastGateTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3010EastGateTrigger
