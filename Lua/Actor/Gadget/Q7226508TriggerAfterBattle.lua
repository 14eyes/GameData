require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7226508TriggerAfterBattle = class("Q7226508TriggerAfterBattle", GadgetActorProxy)
Q7226508TriggerAfterBattle.defaultAlias = "Q7226508TriggerAfterBattle"
local Q72265ClientConfig = require("Quest/Client/Q72265ClientConfig")

local subIDs = Q72265ClientConfig.SubIDs
local npcs = Q72265ClientConfig.Npcs
local datas = Q72265ClientConfig.Datas

function Q7226508TriggerAfterBattle:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7226508TriggerAfterBattle:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7226508TriggerAfterBattle:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("72265")
    actor:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("72265"):TransmitPlayerById(nil, 3)
    end, nil, nil, "", false, true)

    actor:RequestInteraction(npcs.Npc20485Data.alias)
    self:DestroySelf()
end

function Q7226508TriggerAfterBattle:TriggerOut()
    print("TriggerOut")
end

return Q7226508TriggerAfterBattle
