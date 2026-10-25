require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12005TriggerBattleOut = class("Q12005TriggerBattleOut", GadgetActorProxy)
Q12005TriggerBattleOut.defaultAlias = "Q12005TriggerBattleOut"
local Q12005ClientConfig = require("Quest/Client/Q12005ClientConfig")

local mainID = Q12005ClientConfig.MainID
local actorAlias = Q12005ClientConfig.ActorAlias
local subIDs = Q12005ClientConfig.SubIDs
local npcs = Q12005ClientConfig.Npcs
local datas = Q12005ClientConfig.Datas

function Q12005TriggerBattleOut:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12005TriggerBattleOut:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12005TriggerBattleOut:TriggerIn()
    print("TriggerIn")
end

function Q12005TriggerBattleOut:TriggerOut()
    print("TriggerOut")
    local actor = actorMgr:GetActor(Q12005ClientConfig.ActorAlias)
    if actor:GetSubQuestState(1200510) == 2 then
        actor:FinishQuestID(true, 1200510)
    end

    self:DestroySelf()
    print("Rewindquest and take trialavatar back")
end

return Q12005TriggerBattleOut
