require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q21000Trigger2 = class("Q21000Trigger2", GadgetActorProxy)
Q21000Trigger2.defaultAlias = "Q21000Trigger2"
local Q21000ClientConfig = require("Quest/Client/Q21000ClientConfig")

local subIDs = Q21000ClientConfig.SubIDs
local npcs = Q21000ClientConfig.Npcs
local datas = Q21000ClientConfig.Datas

function Q21000Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q21000Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q21000Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("21000"):FinishQuestID(false, 2100004)
    self:DestroySelf()
end

function Q21000Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q21000Trigger2
