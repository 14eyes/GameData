require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3014EastGateTrigger = class("Q3014EastGateTrigger", GadgetActorProxy)
Q3014EastGateTrigger.defaultAlias = "Q3014EastGateTrigger"
local Q3014ClientConfig = require("Quest/Client/Q3014ClientConfig")

local subIDs = Q3014ClientConfig.SubIDs
local npcs = Q3014ClientConfig.Npcs
local datas = Q3014ClientConfig.Datas

function Q3014EastGateTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3014EastGateTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(10, 27, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3014EastGateTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3014"):RequestInteraction(npcs.Npc12657Data.alias)
end

function Q3014EastGateTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3014EastGateTrigger
