require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19062TriggerInLiar = class("Q19062TriggerInLiar", GadgetActorProxy)
Q19062TriggerInLiar.defaultAlias = "Q19062TriggerInLiar"
local Q19062ClientConfig = require("Quest/Client/Q19062ClientConfig")

local mainID = Q19062ClientConfig.MainID
local actorAlias = Q19062ClientConfig.ActorAlias
local subIDs = Q19062ClientConfig.SubIDs
local npcs = Q19062ClientConfig.Npcs
local datas = Q19062ClientConfig.Datas

function Q19062TriggerInLiar:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19062TriggerInLiar:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19062TriggerInLiar:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(Q19062ClientConfig.ActorAlias)
    if actor:GetSubQuestState(1906211) == 2 then
        actor:FinishQuestID(false, 1906211)
    end

    self:DestroySelf()
end

function Q19062TriggerInLiar:TriggerOut()
    print("TriggerOut")
end

return Q19062TriggerInLiar
