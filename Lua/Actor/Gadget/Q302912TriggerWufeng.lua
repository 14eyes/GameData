require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302912TriggerWufeng = class("Q302912TriggerWufeng", GadgetActorProxy)
Q302912TriggerWufeng.defaultAlias = "Q302912TriggerWufeng"
local Q3029ClientConfig = require("Quest/Client/Q3029ClientConfig")

local this
local subIDs = Q3029ClientConfig.SubIDs
local npcs = Q3029ClientConfig.Npcs
local datas = Q3029ClientConfig.Datas

function Q302912TriggerWufeng:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q302912TriggerWufeng:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q302912TriggerWufeng:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3029"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("3029")
        actor:CreateQuestNpcById(302912, npcs.PaimonData.id, 2)
        actor:RequestInteraction(npcs.PaimonData.alias)
    end, nil, nil, 0, false, true)
end

function Q302912TriggerWufeng:PreTriggerIn()
    print("PreTriggerIn")
end

function Q302912TriggerWufeng:LightUpTriggerIn()
    print("LightUpTriggerIn")
    actorMgr:GetActor("3029"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q302912TriggerWufeng:TriggerOut()
    print("TriggerOut")
end

return Q302912TriggerWufeng
