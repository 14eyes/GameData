require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11010Trigger3 = class("Q11010Trigger3", GadgetActorProxy)
Q11010Trigger3.defaultAlias = "Q11010Trigger3"
local Q11010ClientConfig = require("Quest/Client/Q11010ClientConfig")

local mainID = Q11010ClientConfig.MainID
local actorAlias = Q11010ClientConfig.ActorAlias
local subIDs = Q11010ClientConfig.SubIDs
local npcs = Q11010ClientConfig.Npcs
local datas = Q11010ClientConfig.Datas

function Q11010Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11010Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11010Trigger3:TriggerIn()
    local actor = actorMgr:GetActor(Q11010ClientConfig.ActorAlias)
    if actor:GetSubQuestState(1101008) == 2 then
        actor:FinishQuestID(false, 1101008)
    end

    print("let 1101008 finish")
    self:DestroySelf()
end

function Q11010Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q11010Trigger3
