require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q800601_TriggerIn = class("Q800601_TriggerIn", GadgetActorProxy)
Q800601_TriggerIn.defaultAlias = "Q800601_TriggerIn"
local Q8006ClientConfig = require("Quest/Client/Q8006ClientConfig")

local subIDs = Q8006ClientConfig.SubIDs
local npcs = Q8006ClientConfig.Npcs
local datas = Q8006ClientConfig.Datas

function Q800601_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q800601_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(20, 14, 12, false, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q800601_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8006"):NarratorOnlyTaskByData(datas.NarratorWithId_800505)
    self:DestroySelf()
end

function Q800601_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q800601_TriggerIn
