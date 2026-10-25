require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006514_TriggerNarrator03 = class("Q4006514_TriggerNarrator03", GadgetActorProxy)
Q4006514_TriggerNarrator03.defaultAlias = "Q4006514_TriggerNarrator03"
local Q40065ClientConfig = require("Quest/Client/Q40065ClientConfig")

local subIDs = Q40065ClientConfig.SubIDs
local npcs = Q40065ClientConfig.Npcs
local datas = Q40065ClientConfig.Datas

function Q4006514_TriggerNarrator03:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006514_TriggerNarrator03:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(9.285482, 6.34448, 12.04066, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006514_TriggerNarrator03:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40065"):NarratorOnlyTaskByData(datas.Narrator_4006506)
    self:DestroySelf()
end

function Q4006514_TriggerNarrator03:TriggerOut()
    print("TriggerOut")
end

return Q4006514_TriggerNarrator03
