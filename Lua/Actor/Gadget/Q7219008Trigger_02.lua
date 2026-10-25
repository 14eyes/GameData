require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7219008Trigger_02 = class("Q7219008Trigger_02", GadgetActorProxy)
Q7219008Trigger_02.defaultAlias = "Q7219008Trigger_02"
local Q72190ClientConfig = require("Quest/Client/Q72190ClientConfig")

local mainID = Q72190ClientConfig.MainID
local actorAlias = Q72190ClientConfig.ActorAlias
local subIDs = Q72190ClientConfig.SubIDs
local datas = Q72190ClientConfig.Datas

function Q7219008Trigger_02:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7219008Trigger_02:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7219008Trigger_02:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7219008)
    self:DestroySelf()
end

function Q7219008Trigger_02:TriggerOut()
    print("TriggerOut")
end

return Q7219008Trigger_02
