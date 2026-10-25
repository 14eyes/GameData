require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q41126Trigger1 = class("Q41126Trigger1", GadgetActorProxy)
Q41126Trigger1.defaultAlias = "Q41126Trigger1"
local Q41126ClientConfig = require("Quest/Client/Q41126ClientConfig")

local mainID = Q41126ClientConfig.MainID
local actorAlias = Q41126ClientConfig.ActorAlias
local subIDs = Q41126ClientConfig.SubIDs
local npcs = Q41126ClientConfig.Npcs
local datas = Q41126ClientConfig.Datas

function Q41126Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q41126Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q41126Trigger1:TriggerIn()
    print("TriggerIn1")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 4112612)
    self:DestroySelf()
end

function Q41126Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q41126Trigger1
