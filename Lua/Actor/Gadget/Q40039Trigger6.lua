require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40039Trigger6 = class("Q40039Trigger6", GadgetActorProxy)
Q40039Trigger6.defaultAlias = "Q40039Trigger6"
local Q40039ClientConfig = require("Quest/Client/Q40039ClientConfig")

local subIDs = Q40039ClientConfig.SubIDs
local npcs = Q40039ClientConfig.Npcs
local datas = Q40039ClientConfig.Datas

function Q40039Trigger6:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40039Trigger6:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(200, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40039Trigger6:TriggerIn()
    print("TriggerIn")
end

function Q40039Trigger6:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("40039"):FinishQuestID(true, 4003905)
    self:DestroySelf()
end

return Q40039Trigger6
