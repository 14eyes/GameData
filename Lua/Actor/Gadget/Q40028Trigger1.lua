require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40028Trigger1 = class("Q40028Trigger1", GadgetActorProxy)
Q40028Trigger1.defaultAlias = "Q40028Trigger1"
local Q40028ClientConfig = require("Quest/Client/Q40028ClientConfig")

local subIDs = Q40028ClientConfig.SubIDs
local npcs = Q40028ClientConfig.Npcs
local gadgets = Q40028ClientConfig.Gadgets
local datas = Q40028ClientConfig.Datas

function Q40028Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40028Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40028Trigger1:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40028")
    actor:CreateQuestNpcById(4002804, npcs.AmborData.id, 2)
    actor:RequestInteraction(npcs.AmborData.alias)
    self:DestroySelf()
end

function Q40028Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q40028Trigger1
