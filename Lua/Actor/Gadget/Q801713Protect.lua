require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q801713Protect = class("Q801713Protect", GadgetActorProxy)
Q801713Protect.defaultAlias = "Q801713Protect"
local Q8017ClientConfig = require("Quest/Client/Q8017ClientConfig")

local this
local subIDs = Q8017ClientConfig.SubIDs
local datas = Q8017ClientConfig.Datas
local npcs = Q8017ClientConfig.Npcs
local points = Q8017ClientConfig.Points

function Q801713Protect:OnPostDataPrepare()
    print("Q801713Protect - OnPostDataPrepare")
    this = self
end

function Q801713Protect:OnPostComponentPrepare()
    print("Q801713Protect - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 8017)
end

function Q801713Protect:TriggerIn()
    print("Q801713Protect - TriggerIn")
end

function Q801713Protect:PreTriggerIn()
    print("Q801713Protect - PreTriggerIn")
end

function Q801713Protect:LightUpTriggerIn()
    print("Q801713Protect - LightUpTriggerIn")
    actorMgr:CreateActorWithPos("Q801713Fail", "Actor/Gadget/Q801713Fail", 70900002, 0, points._Q801713FailPoint_.pos, points._Q801713FailPoint_.rot, true, false, 3)
    if actorUtils.IsMalePlayer() then
        local actor = actorMgr:GetActor("8017")
        actorMgr:GetActor("8017"):ShowBlackScreen(0, 1, 0, function(arg1)
            actorMgr:GetActor("8017"):CreateQuestNpcById(801713, npcs.Npc1026.id, 0, false, 0)
            actorMgr:GetActor("8017"):RequestInteraction(npcs.Npc1026.alias, "", true)
        end, nil, nil, "", false, true)
    else
        local actor = actorMgr:GetActor("8017")
        actorMgr:GetActor("8017"):ShowBlackScreen(0, 1, 0, function(arg1)
            actorMgr:GetActor("8017"):CreateQuestNpcById(801713, npcs.Npc1025.id, 0, false, 0)
            actorMgr:GetActor("8017"):RequestInteraction(npcs.Npc1025.alias, "", true)
        end, nil, nil, "", false, true)
    end
end

function Q801713Protect:TriggerOut()
    print("Q801713Protect - TriggerOut")
end

return Q801713Protect
