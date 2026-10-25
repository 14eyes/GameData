require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40039Trigger5 = class("Q40039Trigger5", GadgetActorProxy)
Q40039Trigger5.defaultAlias = "Q40039Trigger5"
local Q40039ClientConfig = require("Quest/Client/Q40039ClientConfig")

local subIDs = Q40039ClientConfig.SubIDs
local npcs = Q40039ClientConfig.Npcs
local datas = Q40039ClientConfig.Datas

function Q40039Trigger5:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40039Trigger5:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40039Trigger5:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40039")
    actor:NarratorOnlyTaskByData(datas.Narrator2, nil, 40039)
    actor:FinishQuestID(false, 4003917)
    self:DestroySelf()
end

function Q40039Trigger5:TriggerOut()
    print("TriggerOut")
end

return Q40039Trigger5
