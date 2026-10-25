require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006514_TriggerNarrator02 = class("Q4006514_TriggerNarrator02", GadgetActorProxy)
Q4006514_TriggerNarrator02.defaultAlias = "Q4006514_TriggerNarrator02"
local Q40065ClientConfig = require("Quest/Client/Q40065ClientConfig")

local subIDs = Q40065ClientConfig.SubIDs
local npcs = Q40065ClientConfig.Npcs
local datas = Q40065ClientConfig.Datas

function Q4006514_TriggerNarrator02:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006514_TriggerNarrator02:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(9.253553, 4.069254, 8.912653, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006514_TriggerNarrator02:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40065"):NarratorOnlyTaskByData(datas.Narrator_4006505)
    self:DestroySelf()
end

function Q4006514_TriggerNarrator02:TriggerOut()
    print("TriggerOut")
end

return Q4006514_TriggerNarrator02
