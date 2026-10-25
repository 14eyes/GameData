require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200918failTrigger = class("Q200918failTrigger", GadgetActorProxy)
Q200918failTrigger.defaultAlias = "Q200918failTrigger"
local Q2009ClientConfig = require("Quest/Client/Q2009ClientConfig")

local mainID = Q2009ClientConfig.MainID
local actorAlias = Q2009ClientConfig.ActorAlias
local subIDs = Q2009ClientConfig.SubIDs
local npcs = Q2009ClientConfig.Npcs
local gadgets = Q2009ClientConfig.Gadgets
local datas = Q2009ClientConfig.Datas

function Q200918failTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q200918failTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(2.5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q200918failTrigger:TriggerIn()
    print("TriggerIn")
end

function Q200918failTrigger:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor(actorAlias):FinishQuestID(true, 200918)
    self:DestroySelf()
end

return Q200918failTrigger
