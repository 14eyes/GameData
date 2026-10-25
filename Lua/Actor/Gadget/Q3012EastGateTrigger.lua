require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3012EastGateTrigger = class("Q3012EastGateTrigger", GadgetActorProxy)
Q3012EastGateTrigger.defaultAlias = "Q3012EastGateTrigger"
local Q3012ClientConfig = require("Quest/Client/Q3012ClientConfig")

local subIDs = Q3012ClientConfig.SubIDs
local npcs = Q3012ClientConfig.Npcs
local datas = Q3012ClientConfig.Datas

function Q3012EastGateTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3012EastGateTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(10, 27, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3012EastGateTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3012"):RequestInteraction(npcs.Npc12657Data.alias)
end

function Q3012EastGateTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3012EastGateTrigger
