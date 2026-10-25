require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40039Trigger2 = class("Q40039Trigger2", GadgetActorProxy)
Q40039Trigger2.defaultAlias = "Q40039Trigger2"
local Q40039ClientConfig = require("Quest/Client/Q40039ClientConfig")

local subIDs = Q40039ClientConfig.SubIDs
local npcs = Q40039ClientConfig.Npcs
local datas = Q40039ClientConfig.Datas

function Q40039Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40039Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40039Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40039"):FinishQuestID(false, 4003922)
end

function Q40039Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q40039Trigger2
