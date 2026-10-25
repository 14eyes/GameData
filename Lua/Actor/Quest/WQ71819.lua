require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71819 = class("Quest71819", QuestActorProxy)
Quest71819.defaultAlias = "Quest71819"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71819:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71819:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7181910"] = self.OnSubStart7181910,
        ["7181901"] = self.OnSubStart7181901,
        ["7181902"] = self.OnSubStart7181902,
        ["7181903"] = self.OnSubStart7181903,
        ["7181904"] = self.OnSubStart7181904,
        ["7181905"] = self.OnSubStart7181905,
        ["7181906"] = self.OnSubStart7181906,
        ["7181907"] = self.OnSubStart7181907,
        ["7181908"] = self.OnSubStart7181908,
        ["7181909"] = self.OnSubStart7181909
    }
end

function Quest71819:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7181910"] = self.OnSubFinish7181910,
        ["7181901"] = self.OnSubFinish7181901,
        ["7181902"] = self.OnSubFinish7181902,
        ["7181903"] = self.OnSubFinish7181903,
        ["7181904"] = self.OnSubFinish7181904,
        ["7181905"] = self.OnSubFinish7181905,
        ["7181906"] = self.OnSubFinish7181906,
        ["7181907"] = self.OnSubFinish7181907,
        ["7181908"] = self.OnSubFinish7181908,
        ["7181909"] = self.OnSubFinish7181909
    }
end

function Quest71819:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7181910"] = self.OnSubFailed7181910,
        ["7181901"] = self.OnSubFailed7181901,
        ["7181902"] = self.OnSubFailed7181902,
        ["7181903"] = self.OnSubFailed7181903,
        ["7181904"] = self.OnSubFailed7181904,
        ["7181905"] = self.OnSubFailed7181905,
        ["7181906"] = self.OnSubFailed7181906,
        ["7181907"] = self.OnSubFailed7181907,
        ["7181908"] = self.OnSubFailed7181908,
        ["7181909"] = self.OnSubFailed7181909
    }
end

function Quest71819:Start()
    print("Start")
end

function Quest71819:OnDestroy()
    print("OnDestroy")
end

function Quest71819:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71819:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71819:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyNPC()
    self:DestoyNPC2()
    self:NotifyTo("Npc30045", 0, true)
    self:NotifyTo("Npc2018", 0, true)
    self:NotifyTo("Npc2007", 0, true)
    self:NotifyTo("Npc2100", 0, true)
end

function Quest71819:DestroyNPC()
    print("DestroyNPC")
    self:SafeDestroyQuestNpc(npcs.Npc201801Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc200701Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2100Data.alias, 3)
end

function Quest71819:DestoyNPC2()
    print("DestoyNPC2")
    self:SafeDestroyQuestNpc(npcs.Npc30039Data.alias, 3)
    self:NotifyTo("Npc30045", 0, true)
end

function Quest71819:OnSubStart7181910(arg1)
    print("OnSubStart7181910")
end

function Quest71819:OnSubFinish7181910(arg1)
    print("OnSubFinish7181910")
end

function Quest71819:OnSubFailed7181910(arg1)
    print("OnSubFailed7181910")
end

function Quest71819:OnSubStart7181901(arg1)
    print("OnSubStart7181901")
    self:CreateQuestNpc(arg1, npcs.Npc30039Data.id, 1)
    self:NotifyTo("Npc30045", 1, true)
end

function Quest71819:OnSubFinish7181901(arg1)
    print("OnSubFinish7181901")
end

function Quest71819:OnSubFailed7181901(arg1)
    print("OnSubFailed7181901")
end

function Quest71819:OnSubStart7181902(arg1)
    print("OnSubStart7181902")
    self:NotifyTo("Npc30045", 1, true)
end

function Quest71819:OnSubFinish7181902(arg1)
    print("OnSubFinish7181902")
end

function Quest71819:OnSubFailed7181902(arg1)
    print("OnSubFailed7181902")
end

function Quest71819:OnSubStart7181903(arg1)
    print("OnSubStart7181903")
    self:NotifyTo("Npc30045", 1, true)
end

function Quest71819:OnSubFinish7181903(arg1)
    print("OnSubFinish7181903")
end

function Quest71819:OnSubFailed7181903(arg1)
    print("OnSubFailed7181903")
end

function Quest71819:OnSubStart7181904(arg1)
    print("OnSubStart7181904")
    self:CreateQuestNpc(arg1, npcs.Npc201801Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc200701Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc2100Data.id, 3)
    self:NotifyTo("Npc30045", 1, true)
end

function Quest71819:OnSubFinish7181904(arg1)
    print("OnSubFinish7181904")
    self:NarratorOnlyTask(datas.NarratorTable)
end

function Quest71819:OnSubFailed7181904(arg1)
    print("OnSubFailed7181904")
end

function Quest71819:OnSubStart7181905(arg1)
    print("OnSubStart7181905")
    self:NotifyTo("Npc30045", 1, true)
end

function Quest71819:OnSubFinish7181905(arg1)
    print("OnSubFinish7181905")
end

function Quest71819:OnSubFailed7181905(arg1)
    print("OnSubFailed7181905")
end

function Quest71819:OnSubStart7181906(arg1)
    print("OnSubStart7181906")
    self:NotifyTo("Npc30045", 1, true)
end

function Quest71819:OnSubFinish7181906(arg1)
    print("OnSubFinish7181906")
end

function Quest71819:OnSubFailed7181906(arg1)
    print("OnSubFailed7181906")
end

function Quest71819:OnSubStart7181907(arg1)
    print("OnSubStart7181907")
    self:NotifyTo("Npc30045", 1, true)
end

function Quest71819:OnSubFinish7181907(arg1)
    print("OnSubFinish7181907")
end

function Quest71819:OnSubFailed7181907(arg1)
    print("OnSubFailed7181907")
end

function Quest71819:OnSubStart7181908(arg1)
    print("OnSubStart7181908")
    self:NotifyTo("Npc30045", 1, true)
end

function Quest71819:OnSubFinish7181908(arg1)
    print("OnSubFinish7181908")
    self:ShowBlackScreen(0.5, 1, 0.5, self.DestroyNPC, nil, nil, "")
end

function Quest71819:OnSubFailed7181908(arg1)
    print("OnSubFailed7181908")
end

function Quest71819:OnSubStart7181909(arg1)
    print("OnSubStart7181909")
    self:CreateQuestNpc(arg1, npcs.Npc30039Data.id, 1)
    self:NotifyTo("Npc30045", 1, true)
end

function Quest71819:OnSubFinish7181909(arg1)
    print("OnSubFinish7181909")
    self:ShowBlackScreen(0.5, 1, 0.5, self.DestoyNPC2)
end

function Quest71819:OnSubFailed7181909(arg1)
    print("OnSubFailed7181909")
end

return Quest71819
