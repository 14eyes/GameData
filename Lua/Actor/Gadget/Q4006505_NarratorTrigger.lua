require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006505_NarratorTrigger = class("Q4006505_NarratorTrigger", GadgetActorProxy)
Q4006505_NarratorTrigger.defaultAlias = "Q4006505_NarratorTrigger"
local Q40065ClientConfig = require("Quest/Client/Q40065ClientConfig")

local subIDs = Q40065ClientConfig.SubIDs
local npcs = Q40065ClientConfig.Npcs
local gadgets = Q40065ClientConfig.Gadgets
local datas = Q40065ClientConfig.Datas

function Q4006505_NarratorTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006505_NarratorTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(120, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006505_NarratorTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40065"):NarratorOnlyTaskByData(datas.Narrator_4006502, nil, 40065)
    self:DestroySelf()
end

function Q4006505_NarratorTrigger:TriggerOut()
    print("TriggerOut")
end

return Q4006505_NarratorTrigger
