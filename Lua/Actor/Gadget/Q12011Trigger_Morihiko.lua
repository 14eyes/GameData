require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12011Trigger_Morihiko = class("Q12011Trigger_Morihiko", GadgetActorProxy)
Q12011Trigger_Morihiko.defaultAlias = "Q12011Trigger_Morihiko"
local Q12011ClientConfig = require("Quest/Client/Q12011ClientConfig")

local subIDs = Q12011ClientConfig.SubIDs
local npcs = Q12011ClientConfig.Npcs
local datas = Q12011ClientConfig.Datas

function Q12011Trigger_Morihiko:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12011Trigger_Morihiko:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12011Trigger_Morihiko:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("12011")
    actor:NarratorOnlyTaskByData(datas.NarratorWithId_1201102, nil, 12011)
    actor:FinishQuestID(false, 1201104)
    self:DestroySelf()
end

function Q12011Trigger_Morihiko:TriggerOut()
    print("TriggerOut")
end

return Q12011Trigger_Morihiko
