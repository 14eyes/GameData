require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q22028Trigger1 = class("Q22028Trigger1", GadgetActorProxy)
Q22028Trigger1.defaultAlias = "Q22028Trigger1"
local Q22028ClientConfig = require("Quest/Client/Q22028ClientConfig")

local mainID = Q22028ClientConfig.MainID
local actorAlias = Q22028ClientConfig.ActorAlias
local subIDs = Q22028ClientConfig.SubIDs
local npcs = Q22028ClientConfig.Npcs
local datas = Q22028ClientConfig.Datas

function Q22028Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q22028Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(4, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q22028Trigger1:TriggerIn()
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 2202804)
    self:DestroySelf()
end

function Q22028Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q22028Trigger1
