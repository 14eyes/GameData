require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3016Trigger3 = class("Q3016Trigger3", GadgetActorProxy)
Q3016Trigger3.defaultAlias = "Q3016Trigger3"
local Q3016ClientConfig = require("Quest/Client/Q3016ClientConfig")

local subIDs = Q3016ClientConfig.SubIDs
local npcs = Q3016ClientConfig.Npcs
local datas = Q3016ClientConfig.Datas

function Q3016Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3016Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3016Trigger3:TriggerIn()
    print("TriggerIn")
    self:DestroySelf()
    actorMgr:GetActor("3016"):ShowBlackScreen(0.5, 2, 0, function(arg1)
        local actor = actorMgr:GetActor("3016")
        actor:CreateQuestNpcById(301615, npcs.Npc1056Data.id, 1)
        actor:RequestInteraction(npcs.Npc1056Data.alias)
    end, nil, nil, "", false, true)
end

function Q3016Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q3016Trigger3
