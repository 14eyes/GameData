require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local MT_Talk_Enter = class("MT_Talk_Enter", GadgetActorProxy)
MT_Talk_Enter.defaultAlias = "MT_Talk_Enter"
local Q72166ClientConfig = require("Quest/Client/Q72166ClientConfig")

local subIDs = Q72166ClientConfig.SubIDs
local npcs = Q72166ClientConfig.Npcs
local datas = Q72166ClientConfig.Datas

function MT_Talk_Enter:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function MT_Talk_Enter:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(26, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function MT_Talk_Enter:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72166"):FinishQuestID(false, 7216648)
    self:DestroySelf()
end

function MT_Talk_Enter:TriggerOut()
    print("TriggerOut")
end

return MT_Talk_Enter
