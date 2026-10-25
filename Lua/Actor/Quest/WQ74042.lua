require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74042 = class("Quest74042", QuestActorProxy)
Quest74042.defaultAlias = "Quest74042"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74042:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74042:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7404201"] = self.OnSubStart7404201,
        ["7404217"] = self.OnSubStart7404217,
        ["7404202"] = self.OnSubStart7404202,
        ["7404215"] = self.OnSubStart7404215,
        ["7404203"] = self.OnSubStart7404203,
        ["7404204"] = self.OnSubStart7404204,
        ["7404205"] = self.OnSubStart7404205,
        ["7404206"] = self.OnSubStart7404206,
        ["7404207"] = self.OnSubStart7404207,
        ["7404208"] = self.OnSubStart7404208,
        ["7404209"] = self.OnSubStart7404209,
        ["7404210"] = self.OnSubStart7404210,
        ["7404211"] = self.OnSubStart7404211,
        ["7404213"] = self.OnSubStart7404213,
        ["7404214"] = self.OnSubStart7404214,
        ["7404216"] = self.OnSubStart7404216,
        ["7404212"] = self.OnSubStart7404212
    }
end

function Quest74042:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7404201"] = self.OnSubFinish7404201,
        ["7404217"] = self.OnSubFinish7404217,
        ["7404202"] = self.OnSubFinish7404202,
        ["7404215"] = self.OnSubFinish7404215,
        ["7404203"] = self.OnSubFinish7404203,
        ["7404204"] = self.OnSubFinish7404204,
        ["7404205"] = self.OnSubFinish7404205,
        ["7404206"] = self.OnSubFinish7404206,
        ["7404207"] = self.OnSubFinish7404207,
        ["7404208"] = self.OnSubFinish7404208,
        ["7404209"] = self.OnSubFinish7404209,
        ["7404210"] = self.OnSubFinish7404210,
        ["7404211"] = self.OnSubFinish7404211,
        ["7404213"] = self.OnSubFinish7404213,
        ["7404214"] = self.OnSubFinish7404214,
        ["7404216"] = self.OnSubFinish7404216,
        ["7404212"] = self.OnSubFinish7404212
    }
end

function Quest74042:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74042:Start()
    print("Start")
end

function Quest74042:OnDestroy()
    print("OnDestroy")
end

function Quest74042:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74042:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74042:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74042:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest74042:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7404213 then
        quest = actorMgr:GetActor(clientData.ActorAlias)
        if quest ~= nil then
            quest:FinishQuestID(false, 7404213)
        end
    elseif arg1 == 7404214 then
        quest = actorMgr:GetActor(clientData.ActorAlias)
        if quest ~= nil then
            quest:FinishQuestID(false, 7404214)
        end
    end
end

function Quest74042:OnSubStart7404201(arg1)
    print("OnSubStart7404201")
end

function Quest74042:OnSubFinish7404201(arg1)
    print("OnSubFinish7404201")
end

function Quest74042:OnSubStart7404217(arg1)
    print("OnSubStart7404217")
end

function Quest74042:OnSubFinish7404217(arg1)
    print("OnSubFinish7404217")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1_2)
        this:TransmitPlayerById(arg1, 1)
    end, nil, nil, 0, false, true)
end

function Quest74042:OnSubStart7404202(arg1)
    print("OnSubStart7404202")
    this:NpcCreateWithNpcTrigger(npcs.Npc21046Data.id, 7404202, 0, 20)
end

function Quest74042:OnSubFinish7404202(arg1)
    print("OnSubFinish7404202")
end

function Quest74042:OnSubStart7404215(arg1)
    print("OnSubStart7404215")
    this:CreateQuestNpc(arg1, npcs.Npc21046Data.id, 0)
end

function Quest74042:OnSubFinish7404215(arg1)
    print("OnSubFinish7404215")
end

function Quest74042:OnSubStart7404203(arg1)
    print("OnSubStart7404203")
    this:CreateQuestNpc(arg1, npcs.Npc21046Data.id, 0)
end

function Quest74042:OnSubFinish7404203(arg1)
    print("OnSubFinish7404203")
    this:SafeDestroyQuestNpc(npcs.Npc21046Data.alias, 3)
end

function Quest74042:OnSubStart7404204(arg1)
    print("OnSubStart7404204")
end

function Quest74042:OnSubFinish7404204(arg1)
    print("OnSubFinish7404204")
end

function Quest74042:OnSubStart7404205(arg1)
    print("OnSubStart7404205")
end

function Quest74042:OnSubFinish7404205(arg1)
    print("OnSubFinish7404205")
end

function Quest74042:OnSubStart7404206(arg1)
    print("OnSubStart7404206")
end

function Quest74042:OnSubFinish7404206(arg1)
    print("OnSubFinish7404206")
end

function Quest74042:OnSubStart7404207(arg1)
    print("OnSubStart7404207")
    this:CreateQuestNpc(arg1, npcs.Npc21046Data.id, 0)
    actorMgr:CreateActorWithPos("Q7404207RmdTrigger", "Actor/Gadget/Q7404207RmdTrigger", 70900002, 0, {x = 3741.287, y = 431.704, z = 4245.484}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74042:OnSubFinish7404207(arg1)
    print("OnSubFinish7404207")
    this:SafeDestroyQuestNpc(npcs.Npc21046Data.alias, 3)
end

function Quest74042:OnSubStart7404208(arg1)
    print("OnSubStart7404208")
end

function Quest74042:OnSubFinish7404208(arg1)
    print("OnSubFinish7404208")
end

function Quest74042:OnSubStart7404209(arg1)
    print("OnSubStart7404209")
end

function Quest74042:OnSubFinish7404209(arg1)
    print("OnSubFinish7404209")
end

function Quest74042:OnSubStart7404210(arg1)
    print("OnSubStart7404210")
end

function Quest74042:OnSubFinish7404210(arg1)
    print("OnSubFinish7404210")
end

function Quest74042:OnSubStart7404211(arg1)
    print("OnSubStart7404211")
end

function Quest74042:OnSubFinish7404211(arg1)
    print("OnSubFinish7404211")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_02)
end

function Quest74042:OnSubStart7404213(arg1)
    print("OnSubStart7404213")
end

function Quest74042:OnSubFinish7404213(arg1)
    print("OnSubFinish7404213")
end

function Quest74042:OnSubStart7404214(arg1)
    print("OnSubStart7404214")
end

function Quest74042:OnSubFinish7404214(arg1)
    print("OnSubFinish7404214")
end

function Quest74042:OnSubStart7404216(arg1)
    print("OnSubStart7404216")
end

function Quest74042:OnSubFinish7404216(arg1)
    print("OnSubFinish7404216")
end

function Quest74042:OnSubStart7404212(arg1)
    print("OnSubStart7404212")
end

function Quest74042:OnSubFinish7404212(arg1)
    print("OnSubFinish7404212")
end

return Quest74042
