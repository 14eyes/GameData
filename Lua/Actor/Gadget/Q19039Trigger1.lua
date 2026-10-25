require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19039Trigger1 = class("Q19039Trigger1", GadgetActorProxy)
Q19039Trigger1.defaultAlias = "Q19039Trigger1"
local Q19039ClientConfig = require("Quest/Client/Q19039ClientConfig")

local subIDs = Q19039ClientConfig.SubIDs
local npcs = Q19039ClientConfig.Npcs
local datas = Q19039ClientConfig.Datas

function Q19039Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19039Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19039Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19039"):ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19039")
        actor:CreateQuestNpcById(1903908, npcs.Coop_GorouData.id, 0)
        actor:RequestCoopInteractionFromSubStartPoint(105901, 1903908)
        actor:RequestInteraction(npcs.Coop_GorouData.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q19039Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q19039Trigger1
