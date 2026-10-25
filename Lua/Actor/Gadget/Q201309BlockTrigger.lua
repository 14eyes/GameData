require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q201309BlockTrigger = class("Q201309BlockTrigger", GadgetActorProxy)
Q201309BlockTrigger.defaultAlias = "Q201309BlockTrigger"
local Q2013ClientConfig = require("Quest/Client/Q2013ClientConfig")

local mainID = Q2013ClientConfig.MainID
local actorAlias = Q2013ClientConfig.ActorAlias
local subIDs = Q2013ClientConfig.SubIDs
local npcs = Q2013ClientConfig.Npcs
local datas = Q2013ClientConfig.Datas

function Q201309BlockTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q201309BlockTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(18, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q201309BlockTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(true, 201309)
    self:DestroySelf()
end

function Q201309BlockTrigger:TriggerOut()
    print("TriggerOut")
end

return Q201309BlockTrigger
