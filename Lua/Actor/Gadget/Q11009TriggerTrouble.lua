require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11009TriggerTrouble = class("Q11009TriggerTrouble", GadgetActorProxy)
Q11009TriggerTrouble.defaultAlias = "Q11009TriggerTrouble"
local Q11009ClientConfig = require("Quest/Client/Q11009ClientConfig")

local subIDs = Q11009ClientConfig.SubIDs
local npcs = Q11009ClientConfig.Npcs
local datas = Q11009ClientConfig.Datas

function Q11009TriggerTrouble:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11009TriggerTrouble:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11009TriggerTrouble:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("11009"):RequestInteraction(npcs.Npc1045Data.alias)
    self:DestroySelf()
end

function Q11009TriggerTrouble:TriggerOut()
    print("TriggerOut")
end

return Q11009TriggerTrouble
