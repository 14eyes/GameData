require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11013TriggerRestArea = class("Q11013TriggerRestArea", GadgetActorProxy)
Q11013TriggerRestArea.defaultAlias = "Q11013TriggerRestArea"
local Q11013ClientConfig = require("Quest/Client/Q11013ClientConfig")

local subIDs = Q11013ClientConfig.SubIDs
local npcs = Q11013ClientConfig.Npcs
local datas = Q11013ClientConfig.Datas

function Q11013TriggerRestArea:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11013TriggerRestArea:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn)
end

function Q11013TriggerRestArea:TriggerIn()
    print("TriggerIn")
    print("TriggerIn")
    local actor = actorMgr:GetActor(Q11013ClientConfig.ActorAlias)
    if actor:GetSubQuestState(1101320) == 2 then
        actor:FinishQuestID(false, 1101320)
    end

    self:DestroySelf()
end

function Q11013TriggerRestArea:TriggerOut()
    print("TriggerOut")
end

return Q11013TriggerRestArea
