require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13031Trigger3 = class("Q13031Trigger3", GadgetActorProxy)
Q13031Trigger3.defaultAlias = "Q13031Trigger3"
local Q13031ClientConfig = require("Quest/Client/Q13031ClientConfig")

local this
local subIDs = Q13031ClientConfig.SubIDs
local npcs = Q13031ClientConfig.Npcs
local points = Q13031ClientConfig.Points
local datas = Q13031ClientConfig.Datas

function Q13031Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q13031Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13031Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13031"):TransmitPlayerByQuestId(1303113, 1, function(arg1)
        actorMgr:GetActor("13031"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
            local actor = actorMgr:GetActor("13031")
            actor:CreateQuestNpcById(1303113, npcs.Npc13261Data.id, 1)
            this:GetQuestNpcActor(npcs.Npc13261Data.alias):SitOnChair(8010)
            actor:RequestInteraction(npcs.Npc13261Data.alias)
        end, nil, nil, datas.DialogsId.id1, false, true)

        this:DestroySelf()
    end)
end

function Q13031Trigger3:PreTriggerIn()
    print("PreTriggerIn")
end

function Q13031Trigger3:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q13031Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q13031Trigger3
