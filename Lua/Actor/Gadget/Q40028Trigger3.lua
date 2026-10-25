require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40028Trigger3 = class("Q40028Trigger3", GadgetActorProxy)
Q40028Trigger3.defaultAlias = "Q40028Trigger3"
local Q40028ClientConfig = require("Quest/Client/Q40028ClientConfig")

local subIDs = Q40028ClientConfig.SubIDs
local npcs = Q40028ClientConfig.Npcs
local gadgets = Q40028ClientConfig.Gadgets
local datas = Q40028ClientConfig.Datas

function Q40028Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40028Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40028Trigger3:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40028")
    actor:CreateQuestNpcById(4002813, npcs.Npc1024Data.id, 3)
    actor:RequestInteraction(npcs.Npc1024Data.alias)
    self:DestroySelf()
end

function Q40028Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q40028Trigger3
