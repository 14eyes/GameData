require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11120Trigger_Zhongli = class("Q11120Trigger_Zhongli", GadgetActorProxy)
Q11120Trigger_Zhongli.defaultAlias = "Q11120Trigger_Zhongli"
local Q11120ClientConfig = require("Quest/Client/Q11120ClientConfig")

local mainID = Q11120ClientConfig.MainID
local actorAlias = Q11120ClientConfig.ActorAlias
local subIDs = Q11120ClientConfig.SubIDs
local npcs = Q11120ClientConfig.Npcs
local datas = Q11120ClientConfig.Datas

function Q11120Trigger_Zhongli:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11120Trigger_Zhongli:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11120Trigger_Zhongli:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.Npc10232Data.alias)
    self:DestroySelf()
end

function Q11120Trigger_Zhongli:TriggerOut()
    print("TriggerOut")
end

return Q11120Trigger_Zhongli
