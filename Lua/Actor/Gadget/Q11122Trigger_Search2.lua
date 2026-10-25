require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11122Trigger_Search2 = class("Q11122Trigger_Search2", GadgetActorProxy)
Q11122Trigger_Search2.defaultAlias = "Q11122Trigger_Search2"
local Q11122ClientConfig = require("Quest/Client/Q11122ClientConfig")

local mainID = Q11122ClientConfig.MainID
local actorAlias = Q11122ClientConfig.ActorAlias
local subIDs = Q11122ClientConfig.SubIDs
local npcs = Q11122ClientConfig.Npcs
local gadgets = Q11122ClientConfig.Gadgets
local datas = Q11122ClientConfig.Datas

function Q11122Trigger_Search2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11122Trigger_Search2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11122Trigger_Search2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1112203)
    actorMgr:DestroyEntityActor(datas.Q11122Trigger_Search2_.alias, 3, false)
end

function Q11122Trigger_Search2:TriggerOut()
    print("TriggerOut")
end

return Q11122Trigger_Search2
