require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19043Trigger1 = class("Q19043Trigger1", GadgetActorProxy)
Q19043Trigger1.defaultAlias = "Q19043Trigger1"
local Q19043ClientConfig = require("Quest/Client/Q19043ClientConfig")

local mainID = Q19043ClientConfig.MainID
local actorAlias = Q19043ClientConfig.ActorAlias
local subIDs = Q19043ClientConfig.SubIDs
local npcs = Q19043ClientConfig.Npcs
local gadgets = Q19043ClientConfig.Gadgets
local datas = Q19043ClientConfig.Datas

function Q19043Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19043Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19043Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1904301)
    self:DestroySelf()
end

function Q19043Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q19043Trigger1
